(declare-fun c_ack!636 () (_ BitVec 64))
(declare-fun a_ack!637 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!636) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!637 #xffffffff)))
(assert (= #xffffffff a_ack!637))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!636) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!636) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!636) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!636))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3cb0000000000000)
                 a!1)
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
