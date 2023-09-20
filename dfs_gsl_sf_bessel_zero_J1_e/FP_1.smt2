(declare-fun a_ack!9 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!9)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    a_ack!9)
                                  ((_ to_fp 11 53) #x3fd0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!9)
                                   ((_ to_fp 11 53) #x3fd0000000000000))
                           ((_ to_fp 11 53) #x400921fb54442d18))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             a_ack!9)
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x400921fb54442d18))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!9)
                                   ((_ to_fp 11 53) #x3fd0000000000000))
                           ((_ to_fp 11 53) #x400921fb54442d18))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!9)
                 ((_ to_fp 11 53) #x3fd0000000000000)))))

(check-sat)
(exit)
