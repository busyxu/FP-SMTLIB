(declare-fun a_ack!661 () (_ BitVec 32))
(declare-fun b_ack!660 () (_ BitVec 64))
(assert (not (bvslt a_ack!661 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!660) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!661))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!660) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!660))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x0010000000000000))))

(check-sat)
(exit)
