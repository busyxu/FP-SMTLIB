(declare-fun a_ack!481 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!481) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) a_ack!481) (CF_floor a_ack!481))
                  #x00000001
                  #x00000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
