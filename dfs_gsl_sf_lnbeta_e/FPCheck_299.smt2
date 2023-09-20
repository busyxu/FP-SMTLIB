(declare-fun a_ack!1010 () (_ BitVec 64))
(declare-fun b_ack!1009 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1010) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1009) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1010) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1009) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1010) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1009) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1010) ((_ to_fp 11 53) b_ack!1009))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1010) ((_ to_fp 11 53) b_ack!1009)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1010)
                    ((_ to_fp 11 53) b_ack!1009))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1010)
                       ((_ to_fp 11 53) b_ack!1009))
               ((_ to_fp 11 53) a_ack!1010))
       ((_ to_fp 11 53) b_ack!1009)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1010)
                       ((_ to_fp 11 53) b_ack!1009))
               ((_ to_fp 11 53) b_ack!1009))
       ((_ to_fp 11 53) a_ack!1010)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1010)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!1010)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1010)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1010)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1010)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1010)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f0559a074362da9)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1010)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf122c77e28883ce)
                         a!1)
                 ((_ to_fp 11 53) #xbf122c77e28883ce))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f0559a074362da9)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1010)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf122c77e28883ce)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf122c77e28883ce))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1010)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
