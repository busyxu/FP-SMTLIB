(declare-fun x1_ack!1414 () (_ BitVec 64))
(declare-fun x0_ack!1418 () (_ BitVec 64))
(declare-fun x2_ack!1415 () (_ BitVec 64))
(declare-fun b_ack!1417 () (_ BitVec 64))
(declare-fun a_ack!1416 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1418) ((_ to_fp 11 53) x1_ack!1414)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1414) ((_ to_fp 11 53) x2_ack!1415)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1414)
                       ((_ to_fp 11 53) x0_ack!1418))
               ((_ to_fp 11 53) x0_ack!1418))
       ((_ to_fp 11 53) x1_ack!1414)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1414)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1414)
                       ((_ to_fp 11 53) x0_ack!1418)))
       ((_ to_fp 11 53) x0_ack!1418)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1415)
                       ((_ to_fp 11 53) x1_ack!1414))
               ((_ to_fp 11 53) x1_ack!1414))
       ((_ to_fp 11 53) x2_ack!1415)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1415)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1415)
                       ((_ to_fp 11 53) x1_ack!1414)))
       ((_ to_fp 11 53) x1_ack!1414)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1414)
                    ((_ to_fp 11 53) x0_ack!1418))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1415)
                    ((_ to_fp 11 53) x1_ack!1414))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1416) ((_ to_fp 11 53) b_ack!1417))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1416) ((_ to_fp 11 53) x0_ack!1418))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1417) ((_ to_fp 11 53) x2_ack!1415))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1416) ((_ to_fp 11 53) b_ack!1417))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1416) ((_ to_fp 11 53) x0_ack!1418))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1416) ((_ to_fp 11 53) x1_ack!1414))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1417) ((_ to_fp 11 53) x0_ack!1418))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1417) ((_ to_fp 11 53) x1_ack!1414)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1414) ((_ to_fp 11 53) b_ack!1417))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1414)
                    ((_ to_fp 11 53) x0_ack!1418))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1416)
                  ((_ to_fp 11 53) x0_ack!1418))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1416)
                  ((_ to_fp 11 53) x0_ack!1418)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1414)
                  ((_ to_fp 11 53) x0_ack!1418))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1414)
                  ((_ to_fp 11 53) x0_ack!1418)))))

(check-sat)
(exit)
