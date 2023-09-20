(declare-fun a_ack!2542 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!2541 () (_ BitVec 64))
(declare-fun b_ack!2540 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!2542) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!2542)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!2542)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2541) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2541)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!2541)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2540) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2541)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) c_ack!2541))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2541)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) #x3fb999999999999a))
       ((_ to_fp 11 53) c_ack!2541)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2542)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2541)
                    ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2542)
                       ((_ to_fp 11 53) c_ack!2541))
               ((_ to_fp 11 53) c_ack!2541))
       ((_ to_fp 11 53) a_ack!2542)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2542)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2542)
                       ((_ to_fp 11 53) c_ack!2541)))
       ((_ to_fp 11 53) c_ack!2541)))
(assert (let ((a!1 (fp.leq (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2542)
                                   ((_ to_fp 11 53) c_ack!2541))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2542)
                                   ((_ to_fp 11 53) c_ack!2541))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2540)
                           ((_ to_fp 11 53) b_ack!2540)))))
  (FPCHECK_FADD_ACCURACY
    #x3feffffffffff950
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x40852429b6c30b05)
                    a!2)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000)))))))

(check-sat)
(exit)
