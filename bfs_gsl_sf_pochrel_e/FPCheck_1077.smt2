(declare-fun a_ack!2987 () (_ BitVec 64))
(declare-fun b_ack!2986 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2986))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!2987)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2986) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2987) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2987)
               ((_ to_fp 11 53) b_ack!2986))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2986))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2987))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2987) ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2987)
                    ((_ to_fp 11 53) b_ack!2986))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!2987 #x3ff0000000000000))

(check-sat)
(exit)
