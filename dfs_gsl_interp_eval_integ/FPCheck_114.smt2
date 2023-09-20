(declare-fun x1_ack!1233 () (_ BitVec 64))
(declare-fun x0_ack!1237 () (_ BitVec 64))
(declare-fun x2_ack!1234 () (_ BitVec 64))
(declare-fun b_ack!1236 () (_ BitVec 64))
(declare-fun a_ack!1235 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1237) ((_ to_fp 11 53) x1_ack!1233)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1233) ((_ to_fp 11 53) x2_ack!1234)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1233)
                       ((_ to_fp 11 53) x0_ack!1237))
               ((_ to_fp 11 53) x0_ack!1237))
       ((_ to_fp 11 53) x1_ack!1233)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1233)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1233)
                       ((_ to_fp 11 53) x0_ack!1237)))
       ((_ to_fp 11 53) x0_ack!1237)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1234)
                       ((_ to_fp 11 53) x1_ack!1233))
               ((_ to_fp 11 53) x1_ack!1233))
       ((_ to_fp 11 53) x2_ack!1234)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1234)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1234)
                       ((_ to_fp 11 53) x1_ack!1233)))
       ((_ to_fp 11 53) x1_ack!1233)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1233)
                    ((_ to_fp 11 53) x0_ack!1237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1234)
                    ((_ to_fp 11 53) x1_ack!1233))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1235) ((_ to_fp 11 53) b_ack!1236))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1235) ((_ to_fp 11 53) x0_ack!1237))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1236) ((_ to_fp 11 53) x2_ack!1234))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1235) ((_ to_fp 11 53) b_ack!1236))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1235) ((_ to_fp 11 53) x0_ack!1237))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1235) ((_ to_fp 11 53) x1_ack!1233))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1236) ((_ to_fp 11 53) x0_ack!1237))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1236) ((_ to_fp 11 53) x1_ack!1233)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1233) ((_ to_fp 11 53) b_ack!1236))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1233)
                    ((_ to_fp 11 53) x0_ack!1237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1235)
                                   ((_ to_fp 11 53) x0_ack!1237))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1235)
                                   ((_ to_fp 11 53) x0_ack!1237)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1233)
                                   ((_ to_fp 11 53) x0_ack!1237))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1233)
                                   ((_ to_fp 11 53) x0_ack!1237))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1235)
                                   ((_ to_fp 11 53) x0_ack!1237))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1233)
                                   ((_ to_fp 11 53) x0_ack!1237))))))
  (FPCHECK_FMUL_UNDERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
