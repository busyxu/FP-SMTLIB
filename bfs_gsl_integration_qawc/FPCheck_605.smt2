(declare-fun limit_ack!8198 () (_ BitVec 64))
(declare-fun a_ack!8199 () (_ BitVec 64))
(declare-fun b_ack!8194 () (_ BitVec 64))
(declare-fun epsabs_ack!8196 () (_ BitVec 64))
(declare-fun epsrel_ack!8197 () (_ BitVec 64))
(declare-fun c_ack!8195 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!8198)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!8194) ((_ to_fp 11 53) a_ack!8199)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!8196) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8197)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!8197)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8195) ((_ to_fp 11 53) a_ack!8199))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!8195) ((_ to_fp 11 53) b_ack!8194))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8195))
                   ((_ to_fp 11 53) a_ack!8199))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8194))
                 ((_ to_fp 11 53) b_ack!8194))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!8195))
                   ((_ to_fp 11 53) a_ack!8199))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!8194)))
         ((_ to_fp 11 53) b_ack!8194))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!8195))
                           ((_ to_fp 11 53) a_ack!8199))
                   ((_ to_fp 11 53) b_ack!8194))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!8199)
                                   ((_ to_fp 11 53) b_ack!8194))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!8199)
                                   ((_ to_fp 11 53) b_ack!8194)))
                   ((_ to_fp 11 53) #x3fefba009d4d09b1))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!8194)
                                   ((_ to_fp 11 53) a_ack!8199)))
                   a!1)))
  (FPCHECK_FSUB_UNDERFLOW a!2 c_ack!8195))))

(check-sat)
(exit)
