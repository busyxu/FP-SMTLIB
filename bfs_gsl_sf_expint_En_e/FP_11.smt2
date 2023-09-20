(declare-fun a_ack!105 () (_ BitVec 32))
(declare-fun b_ack!104 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!105 #x00000000)))
(assert (= #x00000000 a_ack!105))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!104) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!104)))
                   ((_ to_fp 11 53) b_ack!104))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x0010000000000000))))

(check-sat)
(exit)
