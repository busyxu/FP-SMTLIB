(declare-fun b_ack!894 () (_ BitVec 32))
(declare-fun a_ack!896 () (_ BitVec 32))
(declare-fun c_ack!895 () (_ BitVec 64))
(assert (not (bvslt b_ack!894 #x00000000)))
(assert (not (bvslt a_ack!896 #x00000000)))
(assert (= #x00000000 a_ack!896))
(assert (not (bvslt b_ack!894 #x00000000)))
(assert (not (= #x00000000 b_ack!894)))
(assert (not (= #x00000001 b_ack!894)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!895))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!894))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!895))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) c_ack!895))))))
  (not a!1)))
(assert (bvslt #x00000002 b_ack!894))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!895)
                                   ((_ to_fp 11 53) c_ack!895))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.gt a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x7feccccccccccccc)
                 (fp.abs ((_ to_fp 11 53) c_ack!895))))))

(check-sat)
(exit)
