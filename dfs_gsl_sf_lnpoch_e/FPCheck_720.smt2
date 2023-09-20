(declare-fun a_ack!2463 () (_ BitVec 64))
(declare-fun b_ack!2462 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2463) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2463)
                     ((_ to_fp 11 53) b_ack!2462))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2462))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2463))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2463) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2463)
                       ((_ to_fp 11 53) b_ack!2462))
               ((_ to_fp 11 53) a_ack!2463))
       ((_ to_fp 11 53) b_ack!2462)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2463)
                       ((_ to_fp 11 53) b_ack!2462))
               ((_ to_fp 11 53) b_ack!2462))
       ((_ to_fp 11 53) a_ack!2463)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2463)
                    ((_ to_fp 11 53) b_ack!2462))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2463)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!2463 #x3ff0000000000000))

(check-sat)
(exit)
