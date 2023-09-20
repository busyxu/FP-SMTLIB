(declare-fun a_ack!260 () (_ BitVec 32))
(declare-fun b_ack!259 () (_ BitVec 64))
(assert (not (bvslt a_ack!260 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!259) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!260)))
(assert (not (= #x00000001 a_ack!260)))
(assert (= #x00000002 a_ack!260))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!259) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!259) ((_ to_fp 11 53) #x2aa965fea53d6e98))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) b_ack!259))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!259))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!259)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
  (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x0010000000000000)))))

(check-sat)
(exit)
