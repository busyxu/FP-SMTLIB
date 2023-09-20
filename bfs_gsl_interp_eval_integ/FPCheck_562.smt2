(declare-fun x1_ack!7083 () (_ BitVec 64))
(declare-fun x0_ack!7087 () (_ BitVec 64))
(declare-fun x2_ack!7084 () (_ BitVec 64))
(declare-fun b_ack!7086 () (_ BitVec 64))
(declare-fun a_ack!7085 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7087) ((_ to_fp 11 53) x1_ack!7083)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7083) ((_ to_fp 11 53) x2_ack!7084)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7083)
                       ((_ to_fp 11 53) x0_ack!7087))
               ((_ to_fp 11 53) x0_ack!7087))
       ((_ to_fp 11 53) x1_ack!7083)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7083)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7083)
                       ((_ to_fp 11 53) x0_ack!7087)))
       ((_ to_fp 11 53) x0_ack!7087)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7084)
                       ((_ to_fp 11 53) x1_ack!7083))
               ((_ to_fp 11 53) x1_ack!7083))
       ((_ to_fp 11 53) x2_ack!7084)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7084)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7084)
                       ((_ to_fp 11 53) x1_ack!7083)))
       ((_ to_fp 11 53) x1_ack!7083)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7083)
                    ((_ to_fp 11 53) x0_ack!7087))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7084)
                    ((_ to_fp 11 53) x1_ack!7083))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7085) ((_ to_fp 11 53) b_ack!7086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7085) ((_ to_fp 11 53) x0_ack!7087))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7086) ((_ to_fp 11 53) x2_ack!7084))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7085) ((_ to_fp 11 53) b_ack!7086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7085) ((_ to_fp 11 53) x0_ack!7087))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7085) ((_ to_fp 11 53) x1_ack!7083))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7086) ((_ to_fp 11 53) x0_ack!7087))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7086) ((_ to_fp 11 53) x1_ack!7083)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7083) ((_ to_fp 11 53) b_ack!7086))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7083)
                    ((_ to_fp 11 53) x0_ack!7087))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7084)
                    ((_ to_fp 11 53) x1_ack!7083))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7083)
          ((_ to_fp 11 53) x1_ack!7083))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7086)
          ((_ to_fp 11 53) x1_ack!7083))))

(check-sat)
(exit)
