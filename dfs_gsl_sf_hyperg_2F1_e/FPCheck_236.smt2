(declare-fun a_ack!1589 () (_ BitVec 64))
(declare-fun b_ack!1586 () (_ BitVec 64))
(declare-fun c_ack!1587 () (_ BitVec 64))
(declare-fun d_ack!1588 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1589) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1586) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1587) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!1588)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1588) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!1588))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1587)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!1587)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1587)
                       ((_ to_fp 11 53) b_ack!1586))
               ((_ to_fp 11 53) b_ack!1586))
       ((_ to_fp 11 53) c_ack!1587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1587)
                       ((_ to_fp 11 53) b_ack!1586)))
       ((_ to_fp 11 53) b_ack!1586)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1587)
                                  ((_ to_fp 11 53) b_ack!1586)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1587)
                       ((_ to_fp 11 53) a_ack!1589))
               ((_ to_fp 11 53) a_ack!1589))
       ((_ to_fp 11 53) c_ack!1587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1587)
                       ((_ to_fp 11 53) a_ack!1589)))
       ((_ to_fp 11 53) a_ack!1589)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1587)
                                  ((_ to_fp 11 53) a_ack!1589)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1589) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1586) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1587) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1589))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1586))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1588) ((_ to_fp 11 53) #xbfd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1588) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1587))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1587))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1589)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1586)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) d_ack!1588))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1587)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!2)
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1589)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1586)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) d_ack!1588))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1587)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!2)
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1589)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1586)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) d_ack!1588))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1587)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
(let ((a!4 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!3))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1589)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1586)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) d_ack!1588))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1587)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_OVERFLOW
    #x3ff0000000000000
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))))))

(check-sat)
(exit)
