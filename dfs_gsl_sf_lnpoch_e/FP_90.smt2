(declare-fun a_ack!1395 () (_ BitVec 64))
(declare-fun b_ack!1394 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1395)
                     ((_ to_fp 11 53) b_ack!1394))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1394) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1394))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1395))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1395) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1395)
                       ((_ to_fp 11 53) b_ack!1394))
               ((_ to_fp 11 53) a_ack!1395))
       ((_ to_fp 11 53) b_ack!1394)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1395)
                       ((_ to_fp 11 53) b_ack!1394))
               ((_ to_fp 11 53) b_ack!1394))
       ((_ to_fp 11 53) a_ack!1395)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1395)
               ((_ to_fp 11 53) b_ack!1394))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1395) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1395) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1395)
                     ((_ to_fp 11 53) b_ack!1394))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1395)
                    ((_ to_fp 11 53) b_ack!1394))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1395)
                    ((_ to_fp 11 53) b_ack!1394))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!1395)
                ((_ to_fp 11 53) b_ack!1394))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1395)
               ((_ to_fp 11 53) b_ack!1394))
       (CF_floor (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!1395)
                         ((_ to_fp 11 53) b_ack!1394)))))

(check-sat)
(exit)
