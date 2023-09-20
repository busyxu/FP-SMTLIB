(declare-fun d_ack!412 () (_ BitVec 64))
(declare-fun a_ack!413 () (_ BitVec 64))
(declare-fun b_ack!411 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!412) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!413) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!412) ((_ to_fp 11 53) #x0024000000000001))))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!412) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) d_ack!412))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!412) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!413)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!411))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!413)
                        ((_ to_fp 11 53) roundNearestTiesToEven b_ack!411))
                ((_ to_fp 11 53) #x0000000000000000))
        ((_ to_fp 11 53) #xbfe0000000000000)))

(check-sat)
(exit)
