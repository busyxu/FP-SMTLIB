(declare-fun a_ack!124 () (_ BitVec 32))
(declare-fun b_ack!123 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!124 #x00000000)))
(assert (not (= #x00000000 a_ack!124)))
(assert (not (= #x00000001 a_ack!124)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!123) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!123))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!124))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!123))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!123))))))
  (not a!1)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!123)
          ((_ to_fp 11 53) b_ack!123))
  #x3ff0000000000000))

(check-sat)
(exit)
