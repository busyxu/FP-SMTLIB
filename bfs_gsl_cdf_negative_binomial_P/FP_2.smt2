(declare-fun p_ack!15 () (_ BitVec 64))
(declare-fun n_ack!14 () (_ BitVec 32))
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!15) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!14)
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
