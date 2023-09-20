(declare-fun a_ack!2589 () (_ BitVec 64))
(declare-fun b_ack!2586 () (_ BitVec 64))
(declare-fun c_ack!2587 () (_ BitVec 64))
(declare-fun d_ack!2588 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2589) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2586) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2587) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!2588)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!2588) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!2588))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2587)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!2587)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2587)
                       ((_ to_fp 11 53) b_ack!2586))
               ((_ to_fp 11 53) b_ack!2586))
       ((_ to_fp 11 53) c_ack!2587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!2587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2587)
                       ((_ to_fp 11 53) b_ack!2586)))
       ((_ to_fp 11 53) b_ack!2586)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2587)
                                  ((_ to_fp 11 53) b_ack!2586)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2587)
                       ((_ to_fp 11 53) a_ack!2589))
               ((_ to_fp 11 53) a_ack!2589))
       ((_ to_fp 11 53) c_ack!2587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!2587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2587)
                       ((_ to_fp 11 53) a_ack!2589)))
       ((_ to_fp 11 53) a_ack!2589)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2587)
                                  ((_ to_fp 11 53) a_ack!2589)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2589) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2586) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!2587) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2589))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2586))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt ((_ to_fp 11 53) d_ack!2588) ((_ to_fp 11 53) #xbfd0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2586)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) b_ack!2586))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!2586)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) b_ack!2586)))

(check-sat)
(exit)
