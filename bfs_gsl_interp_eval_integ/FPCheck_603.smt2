(declare-fun x1_ack!7561 () (_ BitVec 64))
(declare-fun x0_ack!7565 () (_ BitVec 64))
(declare-fun x2_ack!7562 () (_ BitVec 64))
(declare-fun b_ack!7564 () (_ BitVec 64))
(declare-fun a_ack!7563 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7565) ((_ to_fp 11 53) x1_ack!7561)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7561) ((_ to_fp 11 53) x2_ack!7562)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7561)
                       ((_ to_fp 11 53) x0_ack!7565))
               ((_ to_fp 11 53) x0_ack!7565))
       ((_ to_fp 11 53) x1_ack!7561)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7561)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7561)
                       ((_ to_fp 11 53) x0_ack!7565)))
       ((_ to_fp 11 53) x0_ack!7565)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7562)
                       ((_ to_fp 11 53) x1_ack!7561))
               ((_ to_fp 11 53) x1_ack!7561))
       ((_ to_fp 11 53) x2_ack!7562)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7562)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7562)
                       ((_ to_fp 11 53) x1_ack!7561)))
       ((_ to_fp 11 53) x1_ack!7561)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7561)
                    ((_ to_fp 11 53) x0_ack!7565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7562)
                    ((_ to_fp 11 53) x1_ack!7561))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7563) ((_ to_fp 11 53) b_ack!7564))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7563) ((_ to_fp 11 53) x0_ack!7565))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7564) ((_ to_fp 11 53) x2_ack!7562))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7563) ((_ to_fp 11 53) b_ack!7564))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7563) ((_ to_fp 11 53) x0_ack!7565))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7563) ((_ to_fp 11 53) x1_ack!7561))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7564) ((_ to_fp 11 53) x0_ack!7565))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7564) ((_ to_fp 11 53) x1_ack!7561)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7561) ((_ to_fp 11 53) b_ack!7564))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7561)
                    ((_ to_fp 11 53) x0_ack!7565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7562)
                    ((_ to_fp 11 53) x1_ack!7561))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7564)
          ((_ to_fp 11 53) x1_ack!7561))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7564)
          ((_ to_fp 11 53) x1_ack!7561))))

(check-sat)
(exit)
