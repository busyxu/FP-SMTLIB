(declare-fun x1_ack!6949 () (_ BitVec 64))
(declare-fun x0_ack!6953 () (_ BitVec 64))
(declare-fun x2_ack!6950 () (_ BitVec 64))
(declare-fun b_ack!6952 () (_ BitVec 64))
(declare-fun a_ack!6951 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6953) ((_ to_fp 11 53) x1_ack!6949)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6949) ((_ to_fp 11 53) x2_ack!6950)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6949)
                       ((_ to_fp 11 53) x0_ack!6953))
               ((_ to_fp 11 53) x0_ack!6953))
       ((_ to_fp 11 53) x1_ack!6949)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6949)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6949)
                       ((_ to_fp 11 53) x0_ack!6953)))
       ((_ to_fp 11 53) x0_ack!6953)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6950)
                       ((_ to_fp 11 53) x1_ack!6949))
               ((_ to_fp 11 53) x1_ack!6949))
       ((_ to_fp 11 53) x2_ack!6950)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6950)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6950)
                       ((_ to_fp 11 53) x1_ack!6949)))
       ((_ to_fp 11 53) x1_ack!6949)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6949)
                    ((_ to_fp 11 53) x0_ack!6953))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6950)
                    ((_ to_fp 11 53) x1_ack!6949))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6951) ((_ to_fp 11 53) b_ack!6952))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6951) ((_ to_fp 11 53) x0_ack!6953))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6952) ((_ to_fp 11 53) x2_ack!6950))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6951) ((_ to_fp 11 53) b_ack!6952))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6951) ((_ to_fp 11 53) x0_ack!6953))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6951) ((_ to_fp 11 53) x1_ack!6949)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6949) ((_ to_fp 11 53) a_ack!6951))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6952) ((_ to_fp 11 53) x1_ack!6949))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6952) ((_ to_fp 11 53) x2_ack!6950))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6950)
                    ((_ to_fp 11 53) x1_ack!6949))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6951)
                  ((_ to_fp 11 53) x1_ack!6949))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6951)
                  ((_ to_fp 11 53) x1_ack!6949)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6952)
                  ((_ to_fp 11 53) x1_ack!6949))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6952)
                  ((_ to_fp 11 53) x1_ack!6949)))))

(check-sat)
(exit)
