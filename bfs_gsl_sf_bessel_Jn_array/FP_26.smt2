(declare-fun a_ack!316 () (_ BitVec 32))
(declare-fun b_ack!314 () (_ BitVec 32))
(declare-fun c_ack!315 () (_ BitVec 64))
(assert (not (bvslt a_ack!316 #x00000000)))
(assert (not (bvslt b_ack!314 a_ack!316)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!314) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!314)))
(assert (not (= #x00000000 b_ack!314)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!315) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!314))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!315)
                 ((_ to_fp 11 53) c_ack!315))
         (fp.mul roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))

(check-sat)
(exit)
