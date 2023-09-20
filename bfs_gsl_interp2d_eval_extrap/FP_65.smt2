(declare-fun x1_ack!2591 () (_ BitVec 64))
(declare-fun x0_ack!2595 () (_ BitVec 64))
(declare-fun y0_ack!2592 () (_ BitVec 64))
(declare-fun x_ack!2593 () (_ BitVec 64))
(declare-fun y_ack!2594 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2595) ((_ to_fp 11 53) x1_ack!2591))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2592) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2593) ((_ to_fp 11 53) x0_ack!2595))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2593) ((_ to_fp 11 53) x1_ack!2591))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2594) ((_ to_fp 11 53) y0_ack!2592))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2594) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2591)
                       ((_ to_fp 11 53) x0_ack!2595))
               ((_ to_fp 11 53) x0_ack!2595))
       ((_ to_fp 11 53) x1_ack!2591)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2591)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2591)
                       ((_ to_fp 11 53) x0_ack!2595)))
       ((_ to_fp 11 53) x0_ack!2595)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2592))
               ((_ to_fp 11 53) y0_ack!2592))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2592)))
       ((_ to_fp 11 53) y0_ack!2592)))

(check-sat)
(exit)
