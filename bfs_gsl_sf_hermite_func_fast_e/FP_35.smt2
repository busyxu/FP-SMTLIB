(declare-fun a_ack!389 () (_ BitVec 32))
(declare-fun b_ack!388 () (_ BitVec 64))
(assert (not (bvslt a_ack!389 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!388) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!389 #x00000024)))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvmul #x00000002 a_ack!389))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!389 a_ack!389)))
                   ((_ to_fp 11 53) #x40aa400000000000))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #x40aa400000000000))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!389 a_ack!389))))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!389 a_ack!389)))
                   ((_ to_fp 11 53) #x40aa400000000000))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!389 a_ack!389)))
                   ((_ to_fp 11 53) #x40aa400000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!389 a_ack!389)))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x40aa400000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!389 a_ack!389)))
                   ((_ to_fp 11 53) #x40aa400000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3f3a01a01a01a01a))
                 a!1)
         ((_ to_fp 11 53) #x3f3a01a01a01a01a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!389 a_ack!389)))
                   ((_ to_fp 11 53) #x40aa400000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3f3a01a01a01a01a))
                 ((_ to_fp 11 53) #x3f3a01a01a01a01a))
         a!1)))

(check-sat)
(exit)
