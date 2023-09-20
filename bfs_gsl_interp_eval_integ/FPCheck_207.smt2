(declare-fun x1_ack!2454 () (_ BitVec 64))
(declare-fun x0_ack!2458 () (_ BitVec 64))
(declare-fun x2_ack!2455 () (_ BitVec 64))
(declare-fun b_ack!2457 () (_ BitVec 64))
(declare-fun a_ack!2456 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2458) ((_ to_fp 11 53) x1_ack!2454)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2454) ((_ to_fp 11 53) x2_ack!2455)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2454)
                       ((_ to_fp 11 53) x0_ack!2458))
               ((_ to_fp 11 53) x0_ack!2458))
       ((_ to_fp 11 53) x1_ack!2454)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2454)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2454)
                       ((_ to_fp 11 53) x0_ack!2458)))
       ((_ to_fp 11 53) x0_ack!2458)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2455)
                       ((_ to_fp 11 53) x1_ack!2454))
               ((_ to_fp 11 53) x1_ack!2454))
       ((_ to_fp 11 53) x2_ack!2455)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2455)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2455)
                       ((_ to_fp 11 53) x1_ack!2454)))
       ((_ to_fp 11 53) x1_ack!2454)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2454)
                    ((_ to_fp 11 53) x0_ack!2458))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2455)
                    ((_ to_fp 11 53) x1_ack!2454))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2456) ((_ to_fp 11 53) b_ack!2457))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2456) ((_ to_fp 11 53) x0_ack!2458))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2457) ((_ to_fp 11 53) x2_ack!2455))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2456) ((_ to_fp 11 53) b_ack!2457))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2456) ((_ to_fp 11 53) x0_ack!2458))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2456) ((_ to_fp 11 53) x1_ack!2454)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2454) ((_ to_fp 11 53) a_ack!2456))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2457) ((_ to_fp 11 53) x1_ack!2454))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2457) ((_ to_fp 11 53) x2_ack!2455))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2455)
                    ((_ to_fp 11 53) x1_ack!2454))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!2456 x1_ack!2454))

(check-sat)
(exit)
