(declare-fun d_ack!248 () (_ BitVec 32))
(declare-fun a_ack!249 () (_ BitVec 64))
(declare-fun b_ack!246 () (_ BitVec 64))
(declare-fun c_ack!247 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand d_ack!248 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!249)
                    ((_ to_fp 11 53) b_ack!246))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!249)
                    ((_ to_fp 11 53) c_ack!247))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!246)
                    ((_ to_fp 11 53) c_ack!247))
            ((_ to_fp 11 53) #x0034000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!249) ((_ to_fp 11 53) b_ack!246)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!249) ((_ to_fp 11 53) c_ack!247)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!249) ((_ to_fp 11 53) #x7fc9999999999999)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!249)
                                   ((_ to_fp 11 53) b_ack!246))
                           ((_ to_fp 11 53) c_ack!247))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!249))
                 a!1)
         ((_ to_fp 11 53) a_ack!249))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!249)
                                   ((_ to_fp 11 53) b_ack!246))
                           ((_ to_fp 11 53) c_ack!247))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!249))
                 ((_ to_fp 11 53) a_ack!249))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!249)
                                   ((_ to_fp 11 53) b_ack!246))
                           ((_ to_fp 11 53) c_ack!247))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!249))
    a!1)))

(check-sat)
(exit)
