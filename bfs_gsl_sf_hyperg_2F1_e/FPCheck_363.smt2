(declare-fun a_ack!2730 () (_ BitVec 64))
(declare-fun b_ack!2727 () (_ BitVec 64))
(declare-fun c_ack!2728 () (_ BitVec 64))
(declare-fun d_ack!2729 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!2730) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2727) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2728) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!2729)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!2729) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!2729))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2728)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!2728)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!2730)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!2730)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2728)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) c_ack!2728))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2728)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) #x3fb999999999999a))
       ((_ to_fp 11 53) c_ack!2728)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2730)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2728)
                    ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2727)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!2727)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (FPCHECK_FADD_ACCURACY c_ack!2728 #x3fb999999999999a))

(check-sat)
(exit)
