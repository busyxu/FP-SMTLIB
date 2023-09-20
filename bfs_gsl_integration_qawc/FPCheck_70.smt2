(declare-fun limit_ack!891 () (_ BitVec 64))
(declare-fun a_ack!892 () (_ BitVec 64))
(declare-fun b_ack!887 () (_ BitVec 64))
(declare-fun epsabs_ack!889 () (_ BitVec 64))
(declare-fun epsrel_ack!890 () (_ BitVec 64))
(declare-fun c_ack!888 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!891)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!887) ((_ to_fp 11 53) a_ack!892)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!889) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!890)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!890)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!888) ((_ to_fp 11 53) a_ack!892))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!888) ((_ to_fp 11 53) b_ack!887))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!888))
                   ((_ to_fp 11 53) a_ack!892))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!887))
                 ((_ to_fp 11 53) b_ack!887))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!888))
                   ((_ to_fp 11 53) a_ack!892))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!887)))
         ((_ to_fp 11 53) b_ack!887))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!888))
                           ((_ to_fp 11 53) a_ack!892))
                   ((_ to_fp 11 53) b_ack!887))))
  (FPCHECK_FDIV_ACCURACY
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!892)
            ((_ to_fp 11 53) b_ack!887)))))

(check-sat)
(exit)
