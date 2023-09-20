(declare-fun a_ack!201 () (_ BitVec 32))
(declare-fun b_ack!200 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!201 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!201)))
(assert (not (= #x00000001 a_ack!201)))
(assert (bvsle #x00000002 a_ack!201))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!200))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!200))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (bvsle #x00000003 a_ack!201))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fea20bd700c2c3e
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                  ((_ to_fp 11 53) b_ack!200))
          ((_ to_fp 11 53) #x3fe8093870155910))))

(check-sat)
(exit)
