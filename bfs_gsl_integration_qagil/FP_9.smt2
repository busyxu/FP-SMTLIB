(declare-fun limit_ack!200 () (_ BitVec 64))
(declare-fun epsabs_ack!199 () (_ BitVec 64))
(declare-fun b_ack!201 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!200)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!199)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!201)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!201)
                       ((_ to_fp 11 53) #x4043264061f2d8c9))
               ((_ to_fp 11 53) #x4043264061f2d8c9))
       ((_ to_fp 11 53) b_ack!201)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!201)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!201)
                       ((_ to_fp 11 53) #x4043264061f2d8c9)))
       ((_ to_fp 11 53) #x4043264061f2d8c9)))

(check-sat)
(exit)
