(declare-fun x1_ack!2788 () (_ BitVec 64))
(declare-fun x0_ack!2792 () (_ BitVec 64))
(declare-fun x2_ack!2789 () (_ BitVec 64))
(declare-fun b_ack!2791 () (_ BitVec 64))
(declare-fun a_ack!2790 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2792) ((_ to_fp 11 53) x1_ack!2788)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2788) ((_ to_fp 11 53) x2_ack!2789)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2788)
                       ((_ to_fp 11 53) x0_ack!2792))
               ((_ to_fp 11 53) x0_ack!2792))
       ((_ to_fp 11 53) x1_ack!2788)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2788)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2788)
                       ((_ to_fp 11 53) x0_ack!2792)))
       ((_ to_fp 11 53) x0_ack!2792)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2789)
                       ((_ to_fp 11 53) x1_ack!2788))
               ((_ to_fp 11 53) x1_ack!2788))
       ((_ to_fp 11 53) x2_ack!2789)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2789)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2789)
                       ((_ to_fp 11 53) x1_ack!2788)))
       ((_ to_fp 11 53) x1_ack!2788)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2788)
                    ((_ to_fp 11 53) x0_ack!2792))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2789)
                    ((_ to_fp 11 53) x1_ack!2788))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2790) ((_ to_fp 11 53) b_ack!2791))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2790) ((_ to_fp 11 53) x0_ack!2792))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2791) ((_ to_fp 11 53) x2_ack!2789))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2790) ((_ to_fp 11 53) b_ack!2791))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2790) ((_ to_fp 11 53) x0_ack!2792))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2790) ((_ to_fp 11 53) x1_ack!2788)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2788) ((_ to_fp 11 53) a_ack!2790))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2791) ((_ to_fp 11 53) x1_ack!2788))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2791) ((_ to_fp 11 53) x2_ack!2789))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2789)
                    ((_ to_fp 11 53) x1_ack!2788))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2790)
          ((_ to_fp 11 53) x1_ack!2788))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2791)
          ((_ to_fp 11 53) x1_ack!2788))))

(check-sat)
(exit)
