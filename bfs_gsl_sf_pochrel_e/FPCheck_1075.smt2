(declare-fun a_ack!2981 () (_ BitVec 64))
(declare-fun b_ack!2980 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2980))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!2981)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2980) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2981) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2981)
               ((_ to_fp 11 53) b_ack!2980))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2980))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2981))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2981) ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2981)
                    ((_ to_fp 11 53) b_ack!2980))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!2981 #x3ff0000000000000))

(check-sat)
(exit)
