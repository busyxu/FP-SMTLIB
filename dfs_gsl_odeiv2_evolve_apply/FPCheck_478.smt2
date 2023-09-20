(declare-fun t_ack!4504 () (_ BitVec 64))
(declare-fun t1_ack!4505 () (_ BitVec 64))
(declare-fun h_ack!4507 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!4506 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4505)
                    ((_ to_fp 11 53) t_ack!4504))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4505)
               ((_ to_fp 11 53) t_ack!4504))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4507) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4505)
                ((_ to_fp 11 53) t_ack!4504))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4507)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4505)
               ((_ to_fp 11 53) t_ack!4504))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fb1b04260f85fe2 y1_ack!4506))

(check-sat)
(exit)
