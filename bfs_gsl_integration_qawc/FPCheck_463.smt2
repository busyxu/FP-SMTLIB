(declare-fun limit_ack!6146 () (_ BitVec 64))
(declare-fun a_ack!6147 () (_ BitVec 64))
(declare-fun b_ack!6142 () (_ BitVec 64))
(declare-fun epsabs_ack!6144 () (_ BitVec 64))
(declare-fun epsrel_ack!6145 () (_ BitVec 64))
(declare-fun c_ack!6143 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6146)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6142) ((_ to_fp 11 53) a_ack!6147)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6144) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6145)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6145)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6143) ((_ to_fp 11 53) a_ack!6147))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6143) ((_ to_fp 11 53) b_ack!6142))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6143))
                   ((_ to_fp 11 53) a_ack!6147))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6142))
                 ((_ to_fp 11 53) b_ack!6142))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6143))
                   ((_ to_fp 11 53) a_ack!6147))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6142)))
         ((_ to_fp 11 53) b_ack!6142))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6143))
                           ((_ to_fp 11 53) a_ack!6147))
                   ((_ to_fp 11 53) b_ack!6142))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6147)
                                   ((_ to_fp 11 53) b_ack!6142))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6147)
                                   ((_ to_fp 11 53) b_ack!6142)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6142)
                    ((_ to_fp 11 53) a_ack!6147)))
    a!1)))

(check-sat)
(exit)
