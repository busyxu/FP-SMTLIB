(declare-fun a_ack!76 () (_ BitVec 32))
(declare-fun b_ack!75 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!76 #x00000000)))
(assert (not (= #x00000000 a_ack!76)))
(assert (not (= #x00000001 a_ack!76)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!75)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!76))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!75))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!75))))))
  (not a!1)))
(assert (bvslt #x00000002 a_ack!76))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!75)
                                   ((_ to_fp 11 53) b_ack!75))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!75))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!75))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 b_ack!75))

(check-sat)
(exit)
