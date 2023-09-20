(declare-fun x1_ack!179 () (_ BitVec 64))
(declare-fun x0_ack!183 () (_ BitVec 64))
(declare-fun x2_ack!180 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!181 () (_ BitVec 64))
(declare-fun y2_ack!182 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!183) ((_ to_fp 11 53) x1_ack!179)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!179) ((_ to_fp 11 53) x2_ack!180)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!179)
                       ((_ to_fp 11 53) x0_ack!183))
               ((_ to_fp 11 53) x0_ack!183))
       ((_ to_fp 11 53) x1_ack!179)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!179)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!179)
                       ((_ to_fp 11 53) x0_ack!183)))
       ((_ to_fp 11 53) x0_ack!183)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!180)
                       ((_ to_fp 11 53) x1_ack!179))
               ((_ to_fp 11 53) x1_ack!179))
       ((_ to_fp 11 53) x2_ack!180)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!180)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!180)
                       ((_ to_fp 11 53) x1_ack!179)))
       ((_ to_fp 11 53) x1_ack!179)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!179)
                    ((_ to_fp 11 53) x0_ack!183))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!180)
                    ((_ to_fp 11 53) x1_ack!179))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!182)
          ((_ to_fp 11 53) y1_ack!181))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!180)
                  ((_ to_fp 11 53) x1_ack!179)))))

(check-sat)
(exit)
