(declare-fun b_ack!379 () (_ BitVec 64))
(declare-fun c_ack!380 () (_ BitVec 64))
(declare-fun d_ack!381 () (_ BitVec 32))
(declare-fun a_ack!382 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!380) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!380)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!381))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!379) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) a_ack!382))
            ((_ to_fp 11 53) #x4083ec744754dd24))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!382))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) a_ack!382)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!382))
               ((_ to_fp 11 53) a_ack!382))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!379)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!382))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!380)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) c_ack!380))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!380)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!380)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!380)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!380)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fc5f15f15f15f16))
                 a!1)
         ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!380)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!380)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fc5f15f15f15f16))
                 ((_ to_fp 11 53) #x3fc5f15f15f15f16))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!380)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!380)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!379)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!382))
                           ((_ to_fp 11 53) b_ack!379))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!380)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!380)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!379)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!382))
                           ((_ to_fp 11 53) b_ack!379))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!380)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!380)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!382)
                       ((_ to_fp 11 53) a_ack!382))
               ((_ to_fp 11 53) a_ack!382))
       ((_ to_fp 11 53) a_ack!382)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!382)
                       ((_ to_fp 11 53) a_ack!382))
               ((_ to_fp 11 53) a_ack!382))
       ((_ to_fp 11 53) a_ack!382)))

(check-sat)
(exit)
