(declare-fun b_ack!541 () (_ BitVec 32))
(declare-fun a_ack!543 () (_ BitVec 32))
(declare-fun c_ack!542 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!541 #x00000000)))
(assert (not (bvslt a_ack!543 #x00000000)))
(assert (= #x00000000 a_ack!543))
(assert (not (bvslt b_ack!541 #x00000000)))
(assert (not (= #x00000000 b_ack!541)))
(assert (not (= #x00000001 b_ack!541)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!542))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 b_ack!541))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!542))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 b_ack!541))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!542)
                                   ((_ to_fp 11 53) c_ack!542))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!542))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_OVERFLOW
  c_ack!542
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!542)
                  ((_ to_fp 11 53) c_ack!542))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
