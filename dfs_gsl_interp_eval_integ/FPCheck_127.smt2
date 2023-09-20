(declare-fun x1_ack!1394 () (_ BitVec 64))
(declare-fun x0_ack!1398 () (_ BitVec 64))
(declare-fun x2_ack!1395 () (_ BitVec 64))
(declare-fun b_ack!1397 () (_ BitVec 64))
(declare-fun a_ack!1396 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1398) ((_ to_fp 11 53) x1_ack!1394)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1394) ((_ to_fp 11 53) x2_ack!1395)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1394)
                       ((_ to_fp 11 53) x0_ack!1398))
               ((_ to_fp 11 53) x0_ack!1398))
       ((_ to_fp 11 53) x1_ack!1394)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1394)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1394)
                       ((_ to_fp 11 53) x0_ack!1398)))
       ((_ to_fp 11 53) x0_ack!1398)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1395)
                       ((_ to_fp 11 53) x1_ack!1394))
               ((_ to_fp 11 53) x1_ack!1394))
       ((_ to_fp 11 53) x2_ack!1395)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1395)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1395)
                       ((_ to_fp 11 53) x1_ack!1394)))
       ((_ to_fp 11 53) x1_ack!1394)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1394)
                    ((_ to_fp 11 53) x0_ack!1398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1395)
                    ((_ to_fp 11 53) x1_ack!1394))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1396) ((_ to_fp 11 53) b_ack!1397))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1396) ((_ to_fp 11 53) x0_ack!1398))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1397) ((_ to_fp 11 53) x2_ack!1395))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1396) ((_ to_fp 11 53) b_ack!1397))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1396) ((_ to_fp 11 53) x0_ack!1398))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1396) ((_ to_fp 11 53) x1_ack!1394))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1397) ((_ to_fp 11 53) x0_ack!1398))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1397) ((_ to_fp 11 53) x1_ack!1394)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1394) ((_ to_fp 11 53) b_ack!1397))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1394)
                    ((_ to_fp 11 53) x0_ack!1398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1396)
                  ((_ to_fp 11 53) x0_ack!1398))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1396)
                  ((_ to_fp 11 53) x0_ack!1398)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1394)
                  ((_ to_fp 11 53) x0_ack!1398))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!1394)
                  ((_ to_fp 11 53) x0_ack!1398)))))

(check-sat)
(exit)
