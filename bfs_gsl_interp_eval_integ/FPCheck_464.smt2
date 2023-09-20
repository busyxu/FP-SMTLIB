(declare-fun x1_ack!5879 () (_ BitVec 64))
(declare-fun x0_ack!5883 () (_ BitVec 64))
(declare-fun x2_ack!5880 () (_ BitVec 64))
(declare-fun b_ack!5882 () (_ BitVec 64))
(declare-fun a_ack!5881 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5883) ((_ to_fp 11 53) x1_ack!5879)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5879) ((_ to_fp 11 53) x2_ack!5880)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5879)
                       ((_ to_fp 11 53) x0_ack!5883))
               ((_ to_fp 11 53) x0_ack!5883))
       ((_ to_fp 11 53) x1_ack!5879)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5879)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5879)
                       ((_ to_fp 11 53) x0_ack!5883)))
       ((_ to_fp 11 53) x0_ack!5883)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5880)
                       ((_ to_fp 11 53) x1_ack!5879))
               ((_ to_fp 11 53) x1_ack!5879))
       ((_ to_fp 11 53) x2_ack!5880)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5880)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5880)
                       ((_ to_fp 11 53) x1_ack!5879)))
       ((_ to_fp 11 53) x1_ack!5879)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5879)
                    ((_ to_fp 11 53) x0_ack!5883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5880)
                    ((_ to_fp 11 53) x1_ack!5879))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5881) ((_ to_fp 11 53) b_ack!5882))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5881) ((_ to_fp 11 53) x0_ack!5883))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5882) ((_ to_fp 11 53) x2_ack!5880))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5881) ((_ to_fp 11 53) b_ack!5882))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5881) ((_ to_fp 11 53) x0_ack!5883))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5881) ((_ to_fp 11 53) x1_ack!5879))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5882) ((_ to_fp 11 53) x0_ack!5883))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5882) ((_ to_fp 11 53) x1_ack!5879)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5879) ((_ to_fp 11 53) b_ack!5882))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5879)
                    ((_ to_fp 11 53) x0_ack!5883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5881)
          ((_ to_fp 11 53) x0_ack!5883))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5881)
          ((_ to_fp 11 53) x0_ack!5883))))

(check-sat)
(exit)
