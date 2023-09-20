(declare-fun x1_ack!6695 () (_ BitVec 64))
(declare-fun x0_ack!6699 () (_ BitVec 64))
(declare-fun x2_ack!6696 () (_ BitVec 64))
(declare-fun b_ack!6698 () (_ BitVec 64))
(declare-fun a_ack!6697 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6699) ((_ to_fp 11 53) x1_ack!6695)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6695) ((_ to_fp 11 53) x2_ack!6696)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6695)
                       ((_ to_fp 11 53) x0_ack!6699))
               ((_ to_fp 11 53) x0_ack!6699))
       ((_ to_fp 11 53) x1_ack!6695)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6695)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6695)
                       ((_ to_fp 11 53) x0_ack!6699)))
       ((_ to_fp 11 53) x0_ack!6699)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6696)
                       ((_ to_fp 11 53) x1_ack!6695))
               ((_ to_fp 11 53) x1_ack!6695))
       ((_ to_fp 11 53) x2_ack!6696)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6696)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6696)
                       ((_ to_fp 11 53) x1_ack!6695)))
       ((_ to_fp 11 53) x1_ack!6695)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6695)
                    ((_ to_fp 11 53) x0_ack!6699))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6696)
                    ((_ to_fp 11 53) x1_ack!6695))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6697) ((_ to_fp 11 53) b_ack!6698))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6697) ((_ to_fp 11 53) x0_ack!6699))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6698) ((_ to_fp 11 53) x2_ack!6696))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6697) ((_ to_fp 11 53) b_ack!6698))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6697) ((_ to_fp 11 53) x0_ack!6699))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6697) ((_ to_fp 11 53) x1_ack!6695)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6695) ((_ to_fp 11 53) a_ack!6697))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6698) ((_ to_fp 11 53) x1_ack!6695))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6698) ((_ to_fp 11 53) x2_ack!6696))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6696)
                    ((_ to_fp 11 53) x1_ack!6695))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6697)
          ((_ to_fp 11 53) x1_ack!6695))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6698)
          ((_ to_fp 11 53) x1_ack!6695))))

(check-sat)
(exit)
