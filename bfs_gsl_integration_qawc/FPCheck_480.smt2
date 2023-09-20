(declare-fun limit_ack!6404 () (_ BitVec 64))
(declare-fun a_ack!6405 () (_ BitVec 64))
(declare-fun b_ack!6400 () (_ BitVec 64))
(declare-fun epsabs_ack!6402 () (_ BitVec 64))
(declare-fun epsrel_ack!6403 () (_ BitVec 64))
(declare-fun c_ack!6401 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6404)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6400) ((_ to_fp 11 53) a_ack!6405)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6402) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6403)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6403)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6401) ((_ to_fp 11 53) a_ack!6405))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6401) ((_ to_fp 11 53) b_ack!6400))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6401))
                   ((_ to_fp 11 53) a_ack!6405))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6400))
                 ((_ to_fp 11 53) b_ack!6400))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6401))
                   ((_ to_fp 11 53) a_ack!6405))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6400)))
         ((_ to_fp 11 53) b_ack!6400))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6401))
                           ((_ to_fp 11 53) a_ack!6405))
                   ((_ to_fp 11 53) b_ack!6400))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6405)
                                   ((_ to_fp 11 53) b_ack!6400))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6405)
                                   ((_ to_fp 11 53) b_ack!6400)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6400)
                                   ((_ to_fp 11 53) a_ack!6405)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1f9ddc59a55733d2))))
  (FPCHECK_FDIV_INVALID
    a!3
    (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) c_ack!6401)))))))

(check-sat)
(exit)
