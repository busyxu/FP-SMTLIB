(declare-fun a_ack!105 () (_ BitVec 64))
(declare-fun b_ack!104 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!105)
                     ((_ to_fp 11 53) b_ack!104))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!104) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!104))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!105)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!105) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FINVALID_LOG a_ack!105 a_ack!105))

(check-sat)
(exit)
