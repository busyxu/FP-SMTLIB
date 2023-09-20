(declare-fun x1_ack!2451 () (_ BitVec 64))
(declare-fun x0_ack!2455 () (_ BitVec 64))
(declare-fun y0_ack!2452 () (_ BitVec 64))
(declare-fun x_ack!2453 () (_ BitVec 64))
(declare-fun y_ack!2454 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2455) ((_ to_fp 11 53) x1_ack!2451))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2453) ((_ to_fp 11 53) x0_ack!2455))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2453) ((_ to_fp 11 53) x1_ack!2451))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2454) ((_ to_fp 11 53) y0_ack!2452)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2451)
                       ((_ to_fp 11 53) x0_ack!2455))
               ((_ to_fp 11 53) x0_ack!2455))
       ((_ to_fp 11 53) x1_ack!2451)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2451)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2451)
                       ((_ to_fp 11 53) x0_ack!2455)))
       ((_ to_fp 11 53) x0_ack!2455)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2452))
               ((_ to_fp 11 53) y0_ack!2452))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2452)))
       ((_ to_fp 11 53) y0_ack!2452)))

(check-sat)
(exit)
