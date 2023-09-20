(declare-fun b_ack!243 () (_ BitVec 64))
(declare-fun c_ack!244 () (_ BitVec 64))
(declare-fun d_ack!245 () (_ BitVec 32))
(declare-fun a_ack!246 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!244)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!245))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!243) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!243) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) a_ack!246))
            ((_ to_fp 11 53) #x4083ec744754dd24))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!246))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) a_ack!246)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!246))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!246))
               ((_ to_fp 11 53) a_ack!246))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!243)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!246))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!244)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) c_ack!244))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!244)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!244)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!244)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!244)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fc5f15f15f15f16))
                 a!1)
         ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!244)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!244)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fc5f15f15f15f16))
                 ((_ to_fp 11 53) #x3fc5f15f15f15f16))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!244)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!244)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fc5f15f15f15f16))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  b_ack!243
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) a_ack!246))
          ((_ to_fp 11 53) b_ack!243))))

(check-sat)
(exit)
