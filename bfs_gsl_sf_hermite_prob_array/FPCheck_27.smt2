(declare-fun a_ack!116 () (_ BitVec 32))
(declare-fun b_ack!115 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!116 #x00000000)))
(assert (not (= #x00000000 a_ack!116)))
(assert (not (= #x00000001 a_ack!116)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!115))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!116))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!115))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (not a!1)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!115)
          ((_ to_fp 11 53) b_ack!115))
  #x3ff0000000000000))

(check-sat)
(exit)
