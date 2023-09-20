(declare-fun a_ack!1747 () (_ BitVec 64))
(declare-fun b_ack!1746 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1746))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!1747))))))
  (not a!1)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1747))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!1746))
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1746) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1747) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1747) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1747) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!1747))
             ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1747) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1747) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1747) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1747)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!3)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c770ef54646d497))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc770ef54646d497))))
      (a!8 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc770ef54646d497)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!5)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ca1016e7d6dd662))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ca1016e7d6dd662))))
      (a!12 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3ca1016e7d6dd662)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven (fp.abs a!7) a!8)
                           ((_ to_fp 11 53) #x3cc8e5599ead4654))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbc770ef54646d497)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #xbcc8e5599ead4654)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!11) a!12)
                            ((_ to_fp 11 53) #x3cf222d09d3968e8))))
      (a!14 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3ca1016e7d6dd662)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x3cf222d09d3968e8)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.abs a!15)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbcc8e5599ead4654)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbcc8e5599ead4654)))
                    ((_ to_fp 11 53) #xbd1a6e3544bdd04d))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!17)))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.abs a!18)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3cf222d09d3968e8)))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3cf222d09d3968e8)))
                    ((_ to_fp 11 53) #x3d4341b653603497))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3d1a6e3544bdd04d)))
                    (fp.add roundNearestTiesToEven
                            a!19
                            ((_ to_fp 11 53) #x3d4341b653603497))))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!21)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!22)
                                    (fp.abs a!17))
                            ((_ to_fp 11 53) #x3d6c0f7c0ebf797c))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!22 a!17)
                            ((_ to_fp 11 53) #xbd6c0f7c0ebf797c)))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!24)
                                    (fp.abs a!21))
                            ((_ to_fp 11 53) #x3d9471fee403ea3c))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!24 a!21)
                            ((_ to_fp 11 53) #x3d9471fee403ea3c)))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.abs a!26)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!17)
                                    ((_ to_fp 11 53) #xbd6c0f7c0ebf797c)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!17)
                                    ((_ to_fp 11 53) #xbd6c0f7c0ebf797c)))
                    ((_ to_fp 11 53) #xbdbdcb973b818cb1))))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!28)))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.abs a!29)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!21)
                                    ((_ to_fp 11 53) #x3d9471fee403ea3c)))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!29
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!21)
                                    ((_ to_fp 11 53) #x3d9471fee403ea3c)))
                    ((_ to_fp 11 53) #x3de5b678bb7cab1e))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x3dbdcb973b818cb1)))
                    (fp.add roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x3de5b678bb7cab1e))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!32)))
(let ((a!34 (fp.add roundNearestTiesToEven
                    a!31
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!33)
                                    (fp.abs a!28))
                            ((_ to_fp 11 53) #x3e0fa6ae3f8f0dea))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!33 a!28)
                            ((_ to_fp 11 53) #xbe0fa6ae3f8f0dea)))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    a!34
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!35)
                                    (fp.abs a!32))
                            ((_ to_fp 11 53) #x3e371377399fda49))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!35 a!32)
                            ((_ to_fp 11 53) #x3e371377399fda49)))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    (fp.abs a!37)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!33 a!28)
                                    ((_ to_fp 11 53) #xbe0fa6ae3f8f0dea))))))
  (FPCHECK_FADD_OVERFLOW
    a!36
    (fp.add roundNearestTiesToEven a!38 ((_ to_fp 11 53) #x3e60d5318a2660c2))))))))))))))))))))))))))

(check-sat)
(exit)
