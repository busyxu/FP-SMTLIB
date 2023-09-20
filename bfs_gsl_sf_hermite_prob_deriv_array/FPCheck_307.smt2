(declare-fun b_ack!2023 () (_ BitVec 32))
(declare-fun a_ack!2025 () (_ BitVec 32))
(declare-fun c_ack!2024 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2023 #x00000000)))
(assert (not (bvslt a_ack!2025 #x00000000)))
(assert (not (= #x00000000 b_ack!2023)))
(assert (not (= #x00000001 b_ack!2023)))
(assert (= #x00000000 a_ack!2025))
(assert (not (bvslt b_ack!2023 #x00000000)))
(assert (not (= #x00000000 b_ack!2023)))
(assert (not (= #x00000001 b_ack!2023)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2024) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2024))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!2023))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2024))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 b_ack!2023))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2024)
                                   ((_ to_fp 11 53) c_ack!2024))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2024))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) c_ack!2024))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2024))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2024))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.abs ((_ to_fp 11 53) c_ack!2024))
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3cb0000000000000)))
    a!2)))

(check-sat)
(exit)
