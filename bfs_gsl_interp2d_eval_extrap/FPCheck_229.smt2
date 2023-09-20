(declare-fun x1_ack!2391 () (_ BitVec 64))
(declare-fun x0_ack!2395 () (_ BitVec 64))
(declare-fun y0_ack!2392 () (_ BitVec 64))
(declare-fun x_ack!2393 () (_ BitVec 64))
(declare-fun y_ack!2394 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2395) ((_ to_fp 11 53) x1_ack!2391))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2392) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2393) ((_ to_fp 11 53) x0_ack!2395))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2393) ((_ to_fp 11 53) x1_ack!2391))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2394) ((_ to_fp 11 53) y0_ack!2392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2391)
                       ((_ to_fp 11 53) x0_ack!2395))
               ((_ to_fp 11 53) x0_ack!2395))
       ((_ to_fp 11 53) x1_ack!2391)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2391)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2391)
                       ((_ to_fp 11 53) x0_ack!2395)))
       ((_ to_fp 11 53) x0_ack!2395)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2392))
               ((_ to_fp 11 53) y0_ack!2392))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2392)))
       ((_ to_fp 11 53) y0_ack!2392)))
(assert (FPCHECK_FSUB_UNDERFLOW y_ack!2394 y0_ack!2392))

(check-sat)
(exit)
