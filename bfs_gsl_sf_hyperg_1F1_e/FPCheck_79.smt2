(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!425 () (_ BitVec 64))
(declare-fun b_ack!423 () (_ BitVec 64))
(declare-fun c_ack!424 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!425)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!425)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!423)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!423)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d19000000000000)))))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.sub roundNearestTiesToEven
                                     ((_ to_fp 11 53) b_ack!423)
                                     ((_ to_fp 11 53) a_ack!425))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!423)
                                   ((_ to_fp 11 53) a_ack!425))
                           a!1))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3d19000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!423)
                    ((_ to_fp 11 53) a_ack!425))
            ((_ to_fp 11 53) #xbfb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!424) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) b_ack!423))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!423))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!423))
            ((_ to_fp 11 53) #x3d19000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!423) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!425))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!423))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!425))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!425))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fe999999999999a (fp.abs ((_ to_fp 11 53) c_ack!424))))

(check-sat)
(exit)
