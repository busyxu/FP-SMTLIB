(declare-fun a_ack!1944 () (_ BitVec 64))
(declare-fun b_ack!1943 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1944) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1943) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1944) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1943) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1944) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1943) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1944) ((_ to_fp 11 53) b_ack!1943))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1944) ((_ to_fp 11 53) b_ack!1943))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1943)
                    ((_ to_fp 11 53) b_ack!1943))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1944)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1944)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1944)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010d666dada6aa8))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1944)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4010d666dada6aa8))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1944)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010d666dada6aa8))
                   ((_ to_fp 11 53) #x4010d666dada6aa8))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!1944)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1944)
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x4004f368a0a50351))
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1944)
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x4025b71ff2054d90))))

(check-sat)
(exit)
