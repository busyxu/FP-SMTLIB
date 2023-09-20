(declare-fun a_ack!328 () (_ BitVec 32))
(declare-fun b_ack!327 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!328 #x00000000)))
(assert (not (= #x00000000 a_ack!328)))
(assert (not (= #x00000001 a_ack!328)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!327))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!328))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!327))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 a_ack!328))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!327)
                                   ((_ to_fp 11 53) b_ack!327))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!327))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!327))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
