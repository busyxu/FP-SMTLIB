(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!192 () (_ BitVec 64))
(declare-fun b_ack!190 () (_ BitVec 64))
(declare-fun c_ack!191 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!192)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!192)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000))))
(assert (let ((a!1 (fp.gt (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!192)
                                    ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #xc1e0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!190)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!190)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000))))
(assert (fp.gt (CF_floor (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!190)
                         ((_ to_fp 11 53) #x3fe0000000000000)))
       ((_ to_fp 11 53) #xc1e0000000000000)))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!190)
                                     ((_ to_fp 11 53) a_ack!192))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!190)
                                   ((_ to_fp 11 53) a_ack!192))
                           a!1))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!190)
                                     ((_ to_fp 11 53) a_ack!192))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.gt a!1 ((_ to_fp 11 53) #xc1e0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!190) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!192) ((_ to_fp 11 53) #xbfb999999999999a)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!190)
                    ((_ to_fp 11 53) a_ack!192))
            ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!191) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!192) ((_ to_fp 11 53) b_ack!190))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!190))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!190))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!190) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) #xbff0000000000000) ((_ to_fp 11 53) a_ack!192))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!192) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!191))
       ((_ to_fp 11 53) #x40962e42fefa39ef)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!190) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!190)
          ((_ to_fp 11 53) a_ack!192))
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) c_ack!191)))))

(check-sat)
(exit)
