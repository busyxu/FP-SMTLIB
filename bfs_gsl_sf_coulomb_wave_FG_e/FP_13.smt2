(declare-fun b_ack!410 () (_ BitVec 64))
(declare-fun c_ack!411 () (_ BitVec 64))
(declare-fun d_ack!412 () (_ BitVec 32))
(declare-fun a_ack!413 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!410) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!411) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!411)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!412))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!410) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!413)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))

(check-sat)
(exit)
