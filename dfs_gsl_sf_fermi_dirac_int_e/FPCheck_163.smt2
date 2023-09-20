(declare-fun a_ack!492 () (_ BitVec 32))
(declare-fun b_ack!491 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!492 #xffffffff)))
(assert (not (= #xffffffff a_ack!492)))
(assert (not (= #x00000000 a_ack!492)))
(assert (not (= #x00000001 a_ack!492)))
(assert (= #x00000002 a_ack!492))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) #x403e000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb999999999999a)
                                   ((_ to_fp 11 53) b_ack!491))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FADD_OVERFLOW a!3 #x0000000000000000)))))

(check-sat)
(exit)
