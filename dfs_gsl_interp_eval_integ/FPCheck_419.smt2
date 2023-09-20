(declare-fun x1_ack!5174 () (_ BitVec 64))
(declare-fun x0_ack!5178 () (_ BitVec 64))
(declare-fun x2_ack!5175 () (_ BitVec 64))
(declare-fun b_ack!5177 () (_ BitVec 64))
(declare-fun a_ack!5176 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5178) ((_ to_fp 11 53) x1_ack!5174)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5174) ((_ to_fp 11 53) x2_ack!5175)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5174)
                       ((_ to_fp 11 53) x0_ack!5178))
               ((_ to_fp 11 53) x0_ack!5178))
       ((_ to_fp 11 53) x1_ack!5174)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5174)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5174)
                       ((_ to_fp 11 53) x0_ack!5178)))
       ((_ to_fp 11 53) x0_ack!5178)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5175)
                       ((_ to_fp 11 53) x1_ack!5174))
               ((_ to_fp 11 53) x1_ack!5174))
       ((_ to_fp 11 53) x2_ack!5175)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5175)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5175)
                       ((_ to_fp 11 53) x1_ack!5174)))
       ((_ to_fp 11 53) x1_ack!5174)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5174)
                    ((_ to_fp 11 53) x0_ack!5178))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5175)
                    ((_ to_fp 11 53) x1_ack!5174))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) b_ack!5177))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) x0_ack!5178))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5177) ((_ to_fp 11 53) x2_ack!5175))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) b_ack!5177))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) x0_ack!5178))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5176) ((_ to_fp 11 53) x1_ack!5174)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5174) ((_ to_fp 11 53) a_ack!5176))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5177) ((_ to_fp 11 53) x1_ack!5174))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5177) ((_ to_fp 11 53) x2_ack!5175)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5175)
                    ((_ to_fp 11 53) x1_ack!5174))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5176)
                       ((_ to_fp 11 53) x1_ack!5174))
               ((_ to_fp 11 53) x1_ack!5174))
       ((_ to_fp 11 53) a_ack!5176)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5176)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5176)
                       ((_ to_fp 11 53) x1_ack!5174)))
       ((_ to_fp 11 53) x1_ack!5174)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5176)
          ((_ to_fp 11 53) x1_ack!5174))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5176)
          ((_ to_fp 11 53) x1_ack!5174))))

(check-sat)
(exit)
