(declare-fun x1_ack!5943 () (_ BitVec 64))
(declare-fun x0_ack!5949 () (_ BitVec 64))
(declare-fun x2_ack!5944 () (_ BitVec 64))
(declare-fun b_ack!5948 () (_ BitVec 64))
(declare-fun a_ack!5947 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!5945 () (_ BitVec 64))
(declare-fun y2_ack!5946 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5949) ((_ to_fp 11 53) x1_ack!5943)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5943) ((_ to_fp 11 53) x2_ack!5944)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5943)
                       ((_ to_fp 11 53) x0_ack!5949))
               ((_ to_fp 11 53) x0_ack!5949))
       ((_ to_fp 11 53) x1_ack!5943)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5943)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5943)
                       ((_ to_fp 11 53) x0_ack!5949)))
       ((_ to_fp 11 53) x0_ack!5949)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5944)
                       ((_ to_fp 11 53) x1_ack!5943))
               ((_ to_fp 11 53) x1_ack!5943))
       ((_ to_fp 11 53) x2_ack!5944)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5944)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5944)
                       ((_ to_fp 11 53) x1_ack!5943)))
       ((_ to_fp 11 53) x1_ack!5943)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5943)
                    ((_ to_fp 11 53) x0_ack!5949))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5944)
                    ((_ to_fp 11 53) x1_ack!5943))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5947) ((_ to_fp 11 53) b_ack!5948))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5947) ((_ to_fp 11 53) x0_ack!5949))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5948) ((_ to_fp 11 53) x2_ack!5944))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5947) ((_ to_fp 11 53) b_ack!5948))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5947) ((_ to_fp 11 53) x0_ack!5949))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5947) ((_ to_fp 11 53) x1_ack!5943)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5943) ((_ to_fp 11 53) a_ack!5947))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5948) ((_ to_fp 11 53) x1_ack!5943))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5948) ((_ to_fp 11 53) x2_ack!5944))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5944)
                    ((_ to_fp 11 53) x1_ack!5943))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!5946)
          ((_ to_fp 11 53) y1_ack!5945))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!5944)
          ((_ to_fp 11 53) x1_ack!5943))))

(check-sat)
(exit)
