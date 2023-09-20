(declare-fun x1_ack!5064 () (_ BitVec 64))
(declare-fun x0_ack!5070 () (_ BitVec 64))
(declare-fun x2_ack!5065 () (_ BitVec 64))
(declare-fun b_ack!5069 () (_ BitVec 64))
(declare-fun a_ack!5068 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5066 () (_ BitVec 64))
(declare-fun y1_ack!5067 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5070) ((_ to_fp 11 53) x1_ack!5064)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5064) ((_ to_fp 11 53) x2_ack!5065)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5064)
                       ((_ to_fp 11 53) x0_ack!5070))
               ((_ to_fp 11 53) x0_ack!5070))
       ((_ to_fp 11 53) x1_ack!5064)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5064)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5064)
                       ((_ to_fp 11 53) x0_ack!5070)))
       ((_ to_fp 11 53) x0_ack!5070)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5065)
                       ((_ to_fp 11 53) x1_ack!5064))
               ((_ to_fp 11 53) x1_ack!5064))
       ((_ to_fp 11 53) x2_ack!5065)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5065)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5065)
                       ((_ to_fp 11 53) x1_ack!5064)))
       ((_ to_fp 11 53) x1_ack!5064)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5064)
                    ((_ to_fp 11 53) x0_ack!5070))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5065)
                    ((_ to_fp 11 53) x1_ack!5064))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5068) ((_ to_fp 11 53) b_ack!5069))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5068) ((_ to_fp 11 53) x0_ack!5070))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5069) ((_ to_fp 11 53) x2_ack!5065))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5068) ((_ to_fp 11 53) b_ack!5069))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5068) ((_ to_fp 11 53) x0_ack!5070))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5068) ((_ to_fp 11 53) x1_ack!5064))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5069) ((_ to_fp 11 53) x0_ack!5070))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5069) ((_ to_fp 11 53) x1_ack!5064)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5064) ((_ to_fp 11 53) b_ack!5069))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5064)
                    ((_ to_fp 11 53) x0_ack!5070))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!5067)
          ((_ to_fp 11 53) y0_ack!5066))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5064)
          ((_ to_fp 11 53) x0_ack!5070))))

(check-sat)
(exit)
