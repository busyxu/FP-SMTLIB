(declare-fun a_ack!718 () (_ BitVec 32))
(declare-fun b_ack!717 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!718 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!717) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!717) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!718)))
(assert (= #x00000001 a_ack!718))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!717) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!717))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!717))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!717)
                           ((_ to_fp 11 53) b_ack!717))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 ((_ to_fp 11 53) #x3ea937e11175f095))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!717)
                           ((_ to_fp 11 53) b_ack!717))
                   ((_ to_fp 11 53) #xbe38d48ed61d7aab))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ea937e11175f095)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ea937e11175f095))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ea937e11175f095)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!717)
                                   ((_ to_fp 11 53) b_ack!717))
                           ((_ to_fp 11 53) #xbe38d48ed61d7aab)))))
  (FPCHECK_FADD_OVERFLOW
    #xbf11566abc011567
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!717)
                    ((_ to_fp 11 53) b_ack!717))
            a!1))))

(check-sat)
(exit)
